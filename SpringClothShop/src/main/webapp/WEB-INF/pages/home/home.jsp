<%-- 
    Document   : home
    Created on : Jul 22, 2024, 9:37:08 PM
    Author     : LONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<main>
    <h1 class="page-title">Dashboard</h1>

    <div class="date">
        <input type="date">
    </div>

    <div class="insights">
        <div class="sales">
            <span class="material-symbols-sharp">trending_up</span>
            <div class="middle">
                <div class="left">
                    <h3>Tổng doanh thu</h3>
                    <h1>1000000 VND</h1>
                </div>
                <div class="progress">
                    <svg>
                    <circle></circle>
                    </svg>
                    <div class="number">80%</div>
                </div>
            </div>
            <small class="last-time">Last 24 hours</small>
        </div>
        
        <div class="expenses">
            <span class="material-symbols-sharp">local_mall</span>
            <div class="middle">
                <div class="left">
                    <h3>Chi phí</h3>
                    <h1>1000000 VND</h1>
                </div>
                <div class="progress">
                    <svg>
                    <circle r="30" cy="40" cx="40"></circle>
                    </svg>
                    <div class="number">80%</div>
                </div>
            </div>
            <small class="last-time">Last 24 hours</small>
        </div>
        
        <div class="income">
            <span class="material-symbols-sharp">stacked_line_chart</span>
            <div class="middle">
                <div class="left">
                    <h3>Thu nhập</h3>
                    <h1>1000000 VND</h1>
                </div>
                <div class="progress">
                    <svg>
                    <circle r="30" cy="40" cx="40"></circle>
                    </svg>
                    <div class="number">80%</div>
                </div>
            </div>
            <small class="last-time">Last 24 hours</small>
        </div>
    </div>
    
    <div class="table-view">
        <h1>Order</h1>
        <table>
            <thead>
                <tr>
                    <td>Mã hóa đơn</td>
                    <td>Ngày đặt hàng</td>
                    <td>Thanh toán</td>
                    <td>Trạng thái</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1111</td>
                    <td>12/12/2024</td>
                    <td>Tiền mặt</td>
                    <td class="warning">Đang vận chuyển</td>
                    <td class="primary">Chi tiết</td>
                </tr>
            </tbody>
        </table>
    </div>
</main>