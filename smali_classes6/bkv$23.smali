.class public final Lbkv$23;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectBuilder.java"

# interfaces
.implements Lcrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcrl",
        "<",
        "Landroid/text/SpannableString;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lbkv$23;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p2, p0, Lbkv$23;->b:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Landroid/text/SpannableString;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 446
    .local p1, "listener":Lcma;, "Lcma<Landroid/text/SpannableString;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lbkv$23;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v2

    new-instance v1, Lbkv$23$1;

    invoke-direct {v1, p0, p1}, Lbkv$23$1;-><init>(Lbkv$23;Lcma;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 479
    return-void
.end method