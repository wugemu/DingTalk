.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;
.super Ljava/lang/Object;
.source "MyRedPacketsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;

    .prologue
    .line 126
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;->c:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;

    iput p3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 129
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;->c:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;

    iget v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;I)V

    .line 130
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 131
    return-void
.end method
