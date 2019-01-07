.class Lmtopsdk/mtop/xcommand/XcmdEventMgr$SingletonHolder;
.super Ljava/lang/Object;
.source "XcmdEventMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/xcommand/XcmdEventMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonHolder"
.end annotation


# static fields
.field static xm:Lmtopsdk/mtop/xcommand/XcmdEventMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;-><init>(Lmtopsdk/mtop/xcommand/XcmdEventMgr$1;)V

    sput-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr$SingletonHolder;->xm:Lmtopsdk/mtop/xcommand/XcmdEventMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
