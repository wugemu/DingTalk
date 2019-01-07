.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$1;
.super Ljava/lang/Object;
.source "SendNormalRedPacketsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)V

    .line 88
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 77
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 82
    return-void
.end method
