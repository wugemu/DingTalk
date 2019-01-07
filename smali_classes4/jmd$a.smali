.class public final Ljmd$a;
.super Ljava/lang/Object;
.source "MonitorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/net/URL;

.field public b:J

.field public c:Z

.field public d:Z

.field public e:J

.field public f:J

.field public g:J

.field public h:D

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljmd$a;->g:J

    return-void
.end method
