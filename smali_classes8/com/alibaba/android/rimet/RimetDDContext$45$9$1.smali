.class final Lcom/alibaba/android/rimet/RimetDDContext$45$9$1;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext$45$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/rimet/RimetDDContext$45$9;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext$45$9;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/rimet/RimetDDContext$45$9;

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$9$1;->b:Lcom/alibaba/android/rimet/RimetDDContext$45$9;

    iput-object p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$9$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1515
    invoke-static {}, Leim;->a()Leim;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$9$1;->b:Lcom/alibaba/android/rimet/RimetDDContext$45$9;

    iget-wide v2, v0, Lcom/alibaba/android/rimet/RimetDDContext$45$9;->b:J

    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$9$1;->b:Lcom/alibaba/android/rimet/RimetDDContext$45$9;

    iget-object v4, v0, Lcom/alibaba/android/rimet/RimetDDContext$45$9;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$9$1;->a:Ljava/lang/String;

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual/range {v1 .. v7}, Leim;->a(JLjava/lang/String;Ljava/lang/String;J)V

    .line 1516
    return-void
.end method
