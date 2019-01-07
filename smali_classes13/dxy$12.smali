.class final Ldxy$12;
.super Lcmg;
.source "IMApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxy;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldtp;",
        "Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;",
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
    .line 338
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;>;"
    iput-object p1, p0, Ldxy$12;->a:Ldxy;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    check-cast p1, Ldtp;

    .line 1341
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->fromModelIDL(Ldtp;)Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;

    move-result-object v0

    .line 338
    return-object v0
.end method
