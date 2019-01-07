.class final Lmtopsdk/mtop/global/SDKUtils$1;
.super Ljava/lang/Object;
.source "SDKUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/global/SDKUtils;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lmtopsdk/mtop/global/SDKUtils$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmtopsdk/mtop/global/SDKUtils$1;->val$userId:Ljava/lang/String;

    invoke-static {v0}, Lic;->c(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lmtopsdk/mtop/unit/UnitConfigManager;->loadUnitInfo()V

    .line 94
    return-void
.end method
