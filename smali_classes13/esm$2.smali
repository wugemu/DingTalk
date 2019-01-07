.class public final Lesm$2;
.super Ljava/lang/Object;
.source "RecommendCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lesm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic b:Lesm;


# direct methods
.method public constructor <init>(Lesm;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lesm;

    .prologue
    .line 329
    iput-object p1, p0, Lesm$2;->b:Lesm;

    iput-object p2, p0, Lesm$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 332
    iget-object v0, p0, Lesm$2;->b:Lesm;

    invoke-static {v0}, Lesm;->a(Lesm;)Leso;

    move-result-object v0

    iget-object v1, p0, Lesm$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-interface {v0, v1}, Leso;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z

    .line 333
    return-void
.end method
