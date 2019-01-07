.class final Lmtopsdk/mtop/global/SDKUtils$2;
.super Ljava/lang/Object;
.source "SDKUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/global/SDKUtils;->logOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {v0}, Lic;->c(Ljava/lang/String;)V

    .line 169
    return-void
.end method
