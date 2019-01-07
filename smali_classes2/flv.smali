.class public final Lflv;
.super Ljava/lang/Object;
.source "MatchContactThread.java"


# static fields
.field private static d:Lflv;


# instance fields
.field a:Lcom/alibaba/android/user/contact/utils/CopyArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/user/contact/utils/CopyArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/alibaba/android/user/contact/utils/CopyArrayList;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/utils/CopyArrayList;-><init>()V

    iput-object v0, p0, Lflv;->a:Lcom/alibaba/android/user/contact/utils/CopyArrayList;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflv;->c:Z

    .line 64
    return-void
.end method

.method public static a()Lflv;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lflv;->d:Lflv;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lflv;

    invoke-direct {v0}, Lflv;-><init>()V

    sput-object v0, Lflv;->d:Lflv;

    .line 57
    :cond_0
    sget-object v0, Lflv;->d:Lflv;

    return-object v0
.end method

.method static synthetic a(Lflv;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lflv;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lflv;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lflv;Z)V
    .locals 4
    .param p0, "x0"    # Lflv;
    .param p1, "x1"    # Z

    .prologue
    const/4 v3, 0x0

    .line 42
    .line 1115
    iget-object v0, p0, Lflv;->a:Lcom/alibaba/android/user/contact/utils/CopyArrayList;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/utils/CopyArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    iput-boolean v3, p0, Lflv;->c:Z

    .line 1117
    :goto_0
    return-void

    .line 1120
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    const/16 v1, 0x64

    iget-object v2, p0, Lflv;->a:Lcom/alibaba/android/user/contact/utils/CopyArrayList;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/utils/CopyArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1123
    iget-object v2, p0, Lflv;->a:Lcom/alibaba/android/user/contact/utils/CopyArrayList;

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/user/contact/utils/CopyArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1124
    invoke-direct {p0, v0, p1}, Lflv;->a(Ljava/util/List;Z)V

    .line 1125
    iget-object v0, p0, Lflv;->a:Lcom/alibaba/android/user/contact/utils/CopyArrayList;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/android/user/contact/utils/CopyArrayList;->removeRange(II)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Z)V
    .locals 5
    .param p2, "uploadWithoutMatch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 132
    .local p1, "uploadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-static {p1}, Lflw;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "phoneList":Ljava/util/List;, "Ljava/util/List<Lfqq;>;"
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_contact_upload_phone_book_list_better"

    .line 1083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 135
    .local v0, "betterFeature":Z
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lfaz;->a()Lezy;

    move-result-object v2

    new-instance v3, Lflv$2;

    invoke-direct {v3, p0, p1, p2}, Lflv$2;-><init>(Lflv;Ljava/util/List;Z)V

    invoke-interface {v2, v1, v3, p2}, Lezy;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 2
    .param p1, "isForce"    # Z
    .param p2, "uploadWithoutMatch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 76
    const-string/jumbo v0, "match_contact_thread_group"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lflv$1;

    invoke-direct {v1, p0, p1, p2}, Lflv$1;-><init>(Lflv;ZZ)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 180
    const-string/jumbo v1, "match_contact_thread_group"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 181
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 182
    new-instance v1, Lflv$3;

    invoke-direct {v1, p0}, Lflv$3;-><init>(Lflv;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method
