pragma solidity ^0.5.6;

interface IInjeolmi {

    event Transfer(address indexed from, address indexed to, uint256 value);  
    event Approval(address indexed owner, address indexed spender, uint256 value); 

    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);

    function transfer(address recipient, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}


//이 코드는 erc20 인터페이스 코드, 토큰 기능을 하기 위한 코드들임( 송금, 입금, 토큰 개수 등등)
//참고 https://docs.klaytn.com/smart-contract/sample-contracts/erc-20/1-erc20