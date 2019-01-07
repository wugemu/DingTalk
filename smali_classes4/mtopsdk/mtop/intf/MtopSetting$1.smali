.class final Lmtopsdk/mtop/intf/MtopSetting$1;
.super Ljava/lang/Object;
.source "MtopSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/intf/MtopSetting;->setMtopConfigListener(Lkkh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mtopConfigListener:Lkkh;


# direct methods
.method constructor <init>(Lkkh;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopSetting$1;->val$mtopConfigListener:Lkkh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopSetting$1;->val$mtopConfigListener:Lkkh;

    if-eqz v0, :cond_0

    invoke-static {}, Lmtopsdk/mtop/intf/MtopSetting;->access$000()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lmtopsdk/mtop/intf/MtopSetting;->access$000()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    .line 154
    :cond_0
    return-void
.end method
