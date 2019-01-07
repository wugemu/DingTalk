.class final Ldlf$1;
.super Ljava/lang/Object;
.source "RecommendSearchHelper.java"

# interfaces
.implements Lcmt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlf;


# direct methods
.method constructor <init>(Ldlf;)V
    .locals 0
    .param p1, "this$0"    # Ldlf;

    .prologue
    .line 75
    iput-object p1, p0, Ldlf$1;->a:Ldlf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/String;
    .param p4, "newValue"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string/jumbo v0, "dt_im"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "im_chat_recommend_emotion_version"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Ldlf$1;->a:Ldlf;

    .line 1041
    invoke-virtual {v0}, Ldlf;->b()V

    .line 80
    :cond_0
    return-void
.end method
