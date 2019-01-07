.class public final Ldyc$4;
.super Lcmg;
.source "ImgResAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldyc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldur;",
        "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyc;


# direct methods
.method public constructor <init>(Ldyc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyc;

    .prologue
    .line 303
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/TopicDataObject;>;"
    iput-object p1, p0, Ldyc$4;->a:Ldyc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    check-cast p1, Ldur;

    .line 1307
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->fromIdl(Ldur;)Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    move-result-object v0

    .line 303
    return-object v0
.end method
