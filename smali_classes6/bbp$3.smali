.class public final Lbbp$3;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1124
    iput-object p1, p0, Lbbp$3;->c:Lbbp;

    iput-object p2, p0, Lbbp$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbp$3;->b:Lcma;

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
    .line 1127
    iget-object v0, p0, Lbbp$3;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbbp$3;->b:Lcma;

    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcma;)V

    .line 1128
    return-void
.end method
