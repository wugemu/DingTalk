.class public final Leym;
.super Ljava/lang/Object;
.source "TeleCallInfoObject.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Leym;->a:J

    .line 45
    iput-object v2, p0, Leym;->b:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Leym;->c:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Leym;->d:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Leym;->e:Ljava/lang/String;

    .line 49
    iput-boolean v3, p0, Leym;->g:Z

    .line 50
    iput-object v2, p0, Leym;->h:Ljava/util/List;

    .line 51
    iput-boolean v3, p0, Leym;->i:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Leym;)V
    .locals 2
    .param p1, "object"    # Leym;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-wide v0, p1, Leym;->a:J

    iput-wide v0, p0, Leym;->a:J

    .line 57
    iget-object v0, p1, Leym;->c:Ljava/lang/String;

    iput-object v0, p0, Leym;->c:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Leym;->b:Ljava/lang/String;

    iput-object v0, p0, Leym;->b:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Leym;->d:Ljava/lang/String;

    iput-object v0, p0, Leym;->d:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Leym;->e:Ljava/lang/String;

    iput-object v0, p0, Leym;->e:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Leym;->f:Ljava/lang/String;

    iput-object v0, p0, Leym;->f:Ljava/lang/String;

    .line 62
    iget-boolean v0, p1, Leym;->g:Z

    iput-boolean v0, p0, Leym;->g:Z

    .line 63
    iget-boolean v0, p1, Leym;->i:Z

    iput-boolean v0, p0, Leym;->i:Z

    .line 64
    iget-object v0, p1, Leym;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Leym;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leym;->h:Ljava/util/List;

    .line 66
    iget-object v0, p0, Leym;->h:Ljava/util/List;

    iget-object v1, p1, Leym;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_0
    return-void
.end method
