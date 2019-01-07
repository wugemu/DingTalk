.class final Ldmn$1$1;
.super Ljava/lang/Object;
.source "QuickPraiseSceneRender.java"

# interfaces
.implements Ldcu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldmn$1;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldmn$1;


# direct methods
.method constructor <init>(Ldmn$1;)V
    .locals 0
    .param p1, "this$1"    # Ldmn$1;

    .prologue
    .line 160
    iput-object p1, p0, Ldmn$1$1;->a:Ldmn$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "localMessageId"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Ldmn$1$1;->a:Ldmn$1;

    iget-object v0, v0, Ldmn$1;->a:Ldmn;

    .line 1036
    iput-object p1, v0, Ldmn;->f:Ljava/lang/String;

    .line 164
    return-void
.end method
