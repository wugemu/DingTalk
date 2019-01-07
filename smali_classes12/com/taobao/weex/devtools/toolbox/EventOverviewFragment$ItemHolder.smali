.class public Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EventOverviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field public actionDuration:Landroid/widget/TextView;

.field public actionName:Landroid/widget/TextView;

.field public compRef:Landroid/widget/TextView;

.field public compType:Landroid/widget/TextView;

.field public duration:Landroid/view/View;

.field public info:Landroid/widget/ImageView;

.field public infoContent:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;

.field public viewType:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->this$0:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;

    .line 152
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 153
    sget v0, Lcom/taobao/weex/inspector/R$id;->action_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->actionName:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/taobao/weex/inspector/R$id;->comp_ref:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->compRef:Landroid/widget/TextView;

    .line 155
    sget v0, Lcom/taobao/weex/inspector/R$id;->duration:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->duration:Landroid/view/View;

    .line 156
    sget v0, Lcom/taobao/weex/inspector/R$id;->info_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->infoContent:Landroid/widget/LinearLayout;

    .line 157
    sget v0, Lcom/taobao/weex/inspector/R$id;->action_duration:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->actionDuration:Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/taobao/weex/inspector/R$id;->view_type:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->viewType:Landroid/widget/TextView;

    .line 159
    sget v0, Lcom/taobao/weex/inspector/R$id;->comp_type:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->compType:Landroid/widget/TextView;

    .line 160
    sget v0, Lcom/taobao/weex/inspector/R$id;->info:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->info:Landroid/widget/ImageView;

    .line 161
    return-void
.end method


# virtual methods
.method public getItemWidth()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->infoContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    add-int/lit16 v0, v0, -0xc8

    return v0
.end method
