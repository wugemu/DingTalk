.class final Ldxy$11;
.super Lcmg;
.source "IMApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxy;->b(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldtq;",
        "Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxy;


# direct methods
.method constructor <init>(Ldxy;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxy;

    .prologue
    .line 324
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;>;"
    iput-object p1, p0, Ldxy$11;->a:Ldxy;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 324
    check-cast p1, Ldtq;

    .line 1327
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->fromModelIDL(Ldtq;)Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    move-result-object v0

    .line 324
    return-object v0
.end method
