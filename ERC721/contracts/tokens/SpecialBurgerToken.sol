pragma solidity ^0.4.23;

import "./NFToken.sol";
import "./ERC721Metadata.sol";

/**
 * @dev Optional metadata implementation for ERC-721 non-fungible token standard.
 */
contract SpecialBurgerToken is NFTokenEnumerable, ERC721Metadata {

  /**
   * @dev Address of restaurant user that created this burger
   */
  address private sbRest;

  /**
   * @dev A descriptive name for the special burger
   */
  string private sbName;

  /**
   * @dev A short description of the special burger
   */
  string private sbDesc;

  /**
   * @dev Mapping from NFT ID to metadata uri.
   */
  mapping (uint256 => string) internal idToUri;

  /**
   * @dev Contract constructor.
   * @param _name A descriptive name for a collection of NFTs.
   * @param _symbol An abbreviated name for NFTokens.
   */
  constructor(
    string _rest,
    string _name,
    string _desc
  )
    public
  {
    sbRest = _rest;
    sbName = _name;
    sbDesc = _desc;
    supportedInterfaces[0x5b5e139f] = true; // ERC721Metadata
  }

  /**
   * @dev Burns a NFT.
   * @notice This is a internal function which should be called from user-implemented external
   * burn function. Its purpose is to show and properly initialize data structures when using this
   * implementation.
   * @param _owner Address of the NFT owner.
   * @param _tokenId ID of the NFT to be burned.
   */
  function _burn(
    address _owner,
    uint256 _tokenId
  )
    internal
  {
    super._burn(_owner, _tokenId);

    if (bytes(idToUri[_tokenId]).length != 0) {
      delete idToUri[_tokenId];
    }
  }

  /**
   * @dev Set a distinct URI (RFC 3986) for a given NFT ID.
   * @notice this is a internal function which should be called from user-implemented external
   * function. Its purpose is to show and properly initialize data structures when using this
   * implementation.
   * @param _tokenId Id for which we want uri.
   * @param _uri String representing RFC 3986 URI.
   */
  function _setTokenUri(
    uint256 _tokenId,
    string _uri
  )
    validNFToken(_tokenId)
    internal
  {
    idToUri[_tokenId] = _uri;
  }

  /**
   * @dev Returns a descriptive name for a collection of NFTokens.
   */
  function rest()
    external
    view
    returns (string _rest)
  {
    _rest = sbRest;
  }

  /**
   * @dev Returns a descriptive name for a collection of NFTokens.
   */
  function name()
    external
    view
    returns (string _name)
  {
    _name = sbName;
  }

  /**
   * @dev Returns the text description of this special burger.
   */
  function desc()
    external
    view
    returns (string _desc)
  {
    _desc = sbDesc;
  }

  /**
   * @dev A distinct URI (RFC 3986) for a given NFT.
   * @param _tokenId Id for which we want uri.
   */
  function tokenURI(
    uint256 _tokenId
  )
    validNFToken(_tokenId)
    external
    view
    returns (string)
  {
    return idToUri[_tokenId];
  }
}
