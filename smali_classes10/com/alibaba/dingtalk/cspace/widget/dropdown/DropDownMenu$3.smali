.class final Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$3;
.super Ljava/lang/Object;
.source "DropDownMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$3;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$3;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a()V

    .line 158
    return-void
.end method
