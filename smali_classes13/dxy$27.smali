.class final Ldxy$27;
.super Lcmg;
.source "IMApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxy;->b(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldxy;


# direct methods
.method constructor <init>(Ldxy;Lcma;J)V
    .locals 1
    .param p1, "this$0"    # Ldxy;

    .prologue
    .line 136
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/String;>;"
    iput-object p1, p0, Ldxy$27;->b:Ldxy;

    iput-wide p3, p0, Ldxy$27;->a:J

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    check-cast p1, Ljava/lang/String;

    .line 1139
    iget-object v0, p0, Ldxy$27;->b:Ldxy;

    .line 2038
    iget-object v0, v0, Ldxy;->a:Ljava/util/Map;

    .line 1139
    if-nez v0, :cond_0

    .line 1140
    iget-object v0, p0, Ldxy$27;->b:Ldxy;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3038
    iput-object v1, v0, Ldxy;->a:Ljava/util/Map;

    .line 1142
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1143
    iget-object v0, p0, Ldxy$27;->b:Ldxy;

    .line 4038
    iget-object v0, v0, Ldxy;->a:Ljava/util/Map;

    .line 1143
    iget-wide v2, p0, Ldxy$27;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    return-object p1
.end method
