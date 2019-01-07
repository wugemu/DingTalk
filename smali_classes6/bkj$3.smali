.class final Lbkj$3;
.super Ljava/lang/Object;
.source "FinishStatusUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkj;->a(Landroid/app/Activity;ZLcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lbkj$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p2, p0, Lbkj$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 216
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lbkj$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    new-instance v0, Lbkj$3$1;

    invoke-direct {v0, p0}, Lbkj$3$1;-><init>(Lbkj$3;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lbkj$3;->b:Landroid/app/Activity;

    .line 217
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2124
    iget-object v3, v1, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$3;

    invoke-direct {v4, v1, v2, v0}, Lbbp$3;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcma;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method
