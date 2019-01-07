.class public final Lbeu;
.super Ljava/lang/Object;
.source "DingEventsWrapperUpdateObject.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public k:J

.field public l:J

.field public m:J

.field public n:Z

.field public o:I

.field public p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;JJ)V
    .locals 1
    .param p1, "dingId"    # J
    .param p3, "wrapperId"    # J
    .param p5, "location"    # Ljava/lang/String;
    .param p6, "startTime"    # J
    .param p8, "endTime"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbeu;->p:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbeu;->q:Ljava/util/List;

    .line 49
    iput-wide p1, p0, Lbeu;->a:J

    .line 50
    iput-wide p3, p0, Lbeu;->b:J

    .line 51
    iput-object p5, p0, Lbeu;->c:Ljava/lang/String;

    .line 52
    iput-wide p6, p0, Lbeu;->d:J

    .line 53
    iput-wide p8, p0, Lbeu;->e:J

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lbeu;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method
