.class final Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$1;
.super Ljava/lang/Object;
.source "RedpacketsCountEdt.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$1;->a:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "edt"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x3

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "temp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    .local v0, "count":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    :cond_2
    const/16 v2, 0x1f4

    if-le v0, v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$1;->a:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->a(Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$1;->a:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->a(Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;->a(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 63
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 68
    return-void
.end method
