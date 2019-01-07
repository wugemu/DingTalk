.class public final Lasr;
.super Ljava/lang/Object;
.source "ReqVersionObject.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "version"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lasr;->a:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lasr;->b:J

    .line 19
    return-void
.end method
