pragma solidity ^0.4.23;

/**
 * @dev Optional metadata extension for ERC-721 non-fungible token standard.
 * See https://goo.gl/pc9yoS.
 */
interface ERC721Metadata {

  /**
   * @dev Returns the restaurant owner of this special burger.
   */
  function rest()
    external
    view
    returns (string _rest);

  /**
   * @dev Returns a descriptive name for this collection of special burgers.
   */
  function name()
    external
    view
    returns (string _name);

  /**
   * @dev Returns the text description of this special burger.
   */
  function desc()
    external
    view
    returns (string _desc);

  /**
   * @dev Returns a distinct Uniform Resource Identifier (URI) for a given asset. It Throws if
   * `_tokenId` is not a valid NFT. URIs are defined in RFC3986. The URI may point to a JSON file
   * that conforms to the "ERC721 Metadata JSON Schema".
   */
  function tokenURI(uint256 _tokenId)
    external
    view
    returns (string);
}
