.class final Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$1;
.super Ljava/lang/Object;
.source "DropDownMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Landroid/util/AttributeSet;)V
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
    .line 100
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$1;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$1;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;)V

    .line 104
    return-void
.end method
