.class final Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt$1;
.super Ljava/lang/Object;
.source "RedpacketsMoneyEdt.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt$1;->a:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "edt"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "temp":Ljava/lang/String;
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "posDot":I
    if-gez v0, :cond_1

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 72
    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v3, v0, 0x4

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 75
    :cond_2
    if-lt v0, v4, :cond_0

    .line 76
    invoke-interface {p1, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 52
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 57
    return-void
.end method
