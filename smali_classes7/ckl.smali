.class public final Lckl;
.super Ljava/lang/Object;
.source "NameWrapper.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lckl;->a:Ljava/lang/String;

    .line 27
    iput-wide v2, p0, Lckl;->b:J

    .line 28
    iput-wide v2, p0, Lckl;->c:J

    .line 29
    iput-object v0, p0, Lckl;->d:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lckl;->e:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lckl;->a:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lckl;->b:J

    .line 35
    iput-wide p4, p0, Lckl;->c:J

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lckl;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
