.class final Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a$1;
.super Landroid/database/DataSetObserver;
.source "ViewPagerContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;-><init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;Landroid/support/v4/view/ViewPager;Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a$1;->c:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a$1;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a$1;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->notifyDataSetChanged()V

    .line 770
    return-void
.end method
