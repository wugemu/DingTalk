.class final Lfao$6;
.super Lcmg;
.source "ExternalContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfao;->a(JJLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcdk;",
        "Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfao;


# direct methods
.method constructor <init>(Lfao;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfao;

    .prologue
    .line 371
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;>;"
    iput-object p1, p0, Lfao$6;->a:Lfao;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    check-cast p1, Lcdk;

    .line 1374
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->fromIDLModel(Lcdk;)Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;

    move-result-object v0

    .line 371
    return-object v0
.end method
