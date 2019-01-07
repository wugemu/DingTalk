.class final Lbbp$79;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->d(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 677
    iput-object p1, p0, Lbbp$79;->c:Lbbp;

    iput-object p2, p0, Lbbp$79;->a:Lcma;

    iput-object p3, p0, Lbbp$79;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 680
    iget-object v0, p0, Lbbp$79;->a:Lcma;

    iget-object v1, p0, Lbbp$79;->c:Lbbp;

    invoke-static {v1}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$79;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-static {v0, v1}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 681
    return-void
.end method
