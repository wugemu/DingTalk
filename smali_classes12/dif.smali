.class public final Ldif;
.super Ljava/lang/Object;
.source "TopicEmotionEvent.java"


# instance fields
.field public a:Z

.field public b:J

.field c:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcma;)V
    .locals 1
    .param p1, "topicId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/TopicDataObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ldif$1;

    invoke-direct {v0, p0}, Ldif$1;-><init>(Ldif;)V

    iput-object v0, p0, Ldif;->d:Lcma;

    .line 20
    iput-wide p1, p0, Ldif;->b:J

    .line 21
    iput-object p3, p0, Ldif;->c:Lcma;

    .line 22
    return-void
.end method
