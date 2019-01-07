.class Lcom/alibaba/aliweex/adapter/component/TabLayout$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/aliweex/adapter/component/TabLayout;->addTabView(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/aliweex/adapter/component/TabLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/aliweex/adapter/component/TabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/aliweex/adapter/component/TabLayout;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$1;->this$0:Lcom/alibaba/aliweex/adapter/component/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    .line 124
    .local v0, "tab":Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
    invoke-virtual {v0}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->select()V

    .line 125
    return-void
.end method
