.class public abstract Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;)V
.end method
