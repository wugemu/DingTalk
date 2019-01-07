.class public final Lgos$d;
.super Ljava/lang/Object;
.source "CSpaceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:J

.field b:J

.field c:J

.field public d:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lgos$d;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 2
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 81
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
