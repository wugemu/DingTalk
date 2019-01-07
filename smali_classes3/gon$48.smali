.class public final Lgon$48;
.super Lcmg;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lgjj;",
        "Lgoe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2763
    .local p2, "x0":Lcma;, "Lcma<Lgoe;>;"
    iput-object p1, p0, Lgon$48;->a:Lgon;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2763
    check-cast p1, Lgjj;

    .line 4022
    if-nez p1, :cond_0

    .line 4023
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4026
    :cond_0
    new-instance v0, Lgoe;

    invoke-direct {v0}, Lgoe;-><init>()V

    .line 4028
    iget-object v1, p1, Lgjj;->a:Ljava/lang/Boolean;

    .line 5022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 4028
    iput-boolean v1, v0, Lgoe;->a:Z

    .line 4029
    iget-object v1, p1, Lgjj;->b:Ljava/lang/Long;

    .line 5044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 4029
    iput-wide v2, v0, Lgoe;->b:J

    .line 4030
    iget-object v1, p1, Lgjj;->c:Ljava/lang/String;

    iput-object v1, v0, Lgoe;->c:Ljava/lang/String;

    goto :goto_0
.end method
