.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$5;
.super Ljava/lang/Object;
.source "SendRandomRedPacketsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$5;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$5;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$5;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->a(DZ)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$5;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$5;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V

    .line 185
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 173
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 178
    return-void
.end method
