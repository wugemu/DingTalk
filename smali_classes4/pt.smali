.class public final Lpt;
.super Ljava/lang/Object;
.source "FetchMailCalendarModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "uid"    # J
    .param p6, "folderId"    # J

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lpt;->a:Ljava/lang/String;

    .line 15
    iput-wide p2, p0, Lpt;->b:J

    .line 16
    iput-wide p4, p0, Lpt;->c:J

    .line 17
    iput-wide p6, p0, Lpt;->d:J

    .line 18
    return-void
.end method
