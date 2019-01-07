.class public abstract Lcom/taobao/taolive/sdk/component/BaseFrame;
.super Ljava/lang/Object;
.source "BaseFrame.java"


# instance fields
.field protected mContainer:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field protected mLandscape:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/taobao/taolive/sdk/component/BaseFrame;-><init>(Landroid/content/Context;Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "landscape"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/component/BaseFrame;->mLandscape:Z

    .line 26
    iput-object p1, p0, Lcom/taobao/taolive/sdk/component/BaseFrame;->mContext:Landroid/content/Context;

    .line 27
    iput-boolean p2, p0, Lcom/taobao/taolive/sdk/component/BaseFrame;->mLandscape:Z

    .line 28
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public abstract onCreateView(Landroid/view/ViewStub;)V
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
