.class public final Lbfa;
.super Ljava/lang/Object;
.source "DingTaskUpdateObject.java"


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;"
        }
    .end annotation
.end field

.field public e:J

.field public f:J

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

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/util/List;JJLjava/util/List;Ljava/util/List;II)V
    .locals 0
    .param p1, "dingId"    # J
    .param p3, "contentType"    # I
    .param p4, "content"    # Ljava/lang/String;
    .param p6, "blockingTime"    # J
    .param p8, "taskRemindTime"    # J
    .param p12, "remindType"    # I
    .param p13, "sendRemindType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;JJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p5, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    .local p10, "newExecutorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p11, "newCcUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lbfa;->a:J

    .line 42
    iput p3, p0, Lbfa;->b:I

    .line 43
    iput-object p4, p0, Lbfa;->c:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lbfa;->d:Ljava/util/List;

    .line 45
    iput-wide p6, p0, Lbfa;->e:J

    .line 46
    iput-wide p8, p0, Lbfa;->f:J

    .line 47
    iput-object p10, p0, Lbfa;->g:Ljava/util/List;

    .line 48
    iput-object p11, p0, Lbfa;->h:Ljava/util/List;

    .line 49
    iput p12, p0, Lbfa;->i:I

    .line 50
    iput p13, p0, Lbfa;->j:I

    .line 51
    return-void
.end method
