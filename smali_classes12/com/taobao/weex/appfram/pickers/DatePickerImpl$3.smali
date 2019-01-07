.class final Lcom/taobao/weex/appfram/pickers/DatePickerImpl$3;
.super Ljava/lang/Object;
.source "DatePickerImpl.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->pickTime(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$3;->val$listener:Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0xa

    .line 123
    if-ge p2, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "h":Ljava/lang/String;
    :goto_0
    if-ge p3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "m":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$3;->val$listener:Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v2}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;->onPick(ZLjava/lang/String;)V

    .line 127
    return-void

    .line 123
    .end local v0    # "h":Ljava/lang/String;
    .end local v1    # "m":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    .restart local v0    # "h":Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
