package twoline;

import java.util.ArrayList;

public class DaoTest {

	public static void main(String[] args) {
		
		OnelineDAO dao = new OnelineDAO();
		OnelineDTO dto = new OnelineDTO();

		dto.setMemo("TestTest");
		
		dao.insert(dto);
		
		ArrayList<OnelineDTO> dtos = dao.getList();
		
		for(int i = 0 ; i < dtos.size(); i++) {
			OnelineDTO dt = dtos.get(i);
			System.out.println("no : " + dt.getNo() + ", memo: " + dt.getMemo() + ", date: " +dt.getWdate());
		}
	}

}