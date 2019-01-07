.class public abstract Linn;
.super Ljava/lang/Object;
.source "MicroApplication.java"


# static fields
.field public static final KEY_APP_CLEAR_TOP:Ljava/lang/String; = "appClearTop"

.field public static final KEY_APP_SCENE_ID:Ljava/lang/String; = "startFromExternal"

.field public static final KEY_APP_START_FROM_EXTERNAL:Ljava/lang/String; = "startFromExternal"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Lcom/alipay/mobile/framework/c;

.field protected mIsPrevent:Z

.field private mParentAppClassName:Ljava/lang/String;

.field private mSourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Linn;->mIsPrevent:Z

    .line 51
    return-void
.end method


# virtual methods
.method public attachContext(Lcom/alipay/mobile/framework/c;)V
    .locals 0
    .param p1, "applicationContext"    # Lcom/alipay/mobile/framework/c;

    .prologue
    .line 128
    iput-object p1, p0, Linn;->mContext:Lcom/alipay/mobile/framework/c;

    .line 129
    return-void
.end method

.method public destroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Linn;->onDestroy(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Linn;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEntryClassName()Ljava/lang/String;
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/c;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Linn;->mContext:Lcom/alipay/mobile/framework/c;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Linn;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy(Landroid/os/Bundle;)V
.end method

.method public abstract onRestart(Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract restart(Landroid/os/Bundle;)V
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Linn;->mAppId:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public final setIsPrevent(Z)V
    .locals 0
    .param p1, "isPrevent"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Linn;->mIsPrevent:Z

    .line 76
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Linn;->mSourceId:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public abstract stop()V
.end method
