.class public Ldlz;
.super Lcrp$a;
.source "MarkdownReplyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldlz$a;
    }
.end annotation


# instance fields
.field public c:Landroid/view/View;

.field public d:Ldmb;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ldlz$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcrp$a;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ldlz;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcrp$a;->a:Lcom/alibaba/wukong/im/Message;

    .line 41
    if-eqz v0, :cond_0

    iget-object v0, p0, Ldlz;->d:Ldmb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldlz;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
