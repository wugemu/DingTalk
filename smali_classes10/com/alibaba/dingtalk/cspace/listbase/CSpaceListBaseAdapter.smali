.class public abstract Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceListBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 31
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter<TT;>;"
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->c:I

    .line 32
    return-void
.end method
