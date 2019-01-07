.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;
.super Ljava/lang/Object;
.source "H5DatePlugin.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->showDateDialog(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;ZZLiny;Lcom/alibaba/fastjson/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

.field final synthetic val$beginDate:Ljava/util/Calendar;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic val$h5BridgeContext:Liny;

.field final synthetic val$isCard:Z

.field final synthetic val$isShowTimeDialog:Z

.field final synthetic val$maxDate:Ljava/util/Calendar;

.field final synthetic val$minDate:Ljava/util/Calendar;

.field final synthetic val$mode:I

.field final synthetic val$result:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Ljava/util/Calendar;Ljava/util/Calendar;ZLcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Liny;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$minDate:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$maxDate:Ljava/util/Calendar;

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$isShowTimeDialog:Z

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$result:Lcom/alibaba/fastjson/JSONObject;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$beginDate:Ljava/util/Calendar;

    iput-object p8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$h5BridgeContext:Liny;

    iput-boolean p9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$isCard:Z

    iput p10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 10
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$minDate:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$maxDate:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$maxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-gt v0, p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$maxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 127
    :cond_0
    :goto_0
    add-int/lit8 v0, p3, 0x1

    if-ge v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "monthStr":Ljava/lang/String;
    :goto_1
    if-ge p4, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "dayStr":Ljava/lang/String;
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$isShowTimeDialog:Z

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$result:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$beginDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$minDate:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$maxDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$h5BridgeContext:Liny;

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$isCard:Z

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$result:Lcom/alibaba/fastjson/JSONObject;

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Liny;ZLcom/alibaba/fastjson/JSONObject;)V

    .line 145
    :goto_3
    return-void

    .line 122
    .end local v8    # "dayStr":Ljava/lang/String;
    .end local v9    # "monthStr":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$minDate:Ljava/util/Calendar;

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$minDate:Ljava/util/Calendar;

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    goto :goto_0

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 128
    .restart local v9    # "monthStr":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 136
    .restart local v8    # "dayStr":Ljava/lang/String;
    :cond_4
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$mode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$result:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$h5BridgeContext:Liny;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$result:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_3

    .line 138
    :cond_5
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$result:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->val$result:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method
