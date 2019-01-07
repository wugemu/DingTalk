.class public Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChipsRecipientAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$a;,
        Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$b;,
        Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;,
        Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:J

.field private C:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/view/LayoutInflater;

.field h:Landroid/content/Context;

.field public i:Lajo;

.field public j:Landroid/app/Activity;

.field k:Z

.field l:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$b;

.field m:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$a;

.field public n:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;

.field o:Landroid/os/Handler;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->p:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->q:Ljava/util/ArrayList;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->b:Ljava/util/ArrayList;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->c:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->d:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->e:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->r:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->s:Ljava/util/ArrayList;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->t:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->u:Ljava/util/ArrayList;

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->v:Ljava/util/Map;

    .line 171
    iput v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->A:I

    .line 172
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->k:Z

    .line 295
    new-instance v1, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;B)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->n:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;

    .line 1203
    new-instance v1, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$11;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$11;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->C:Ljava/util/Comparator;

    .line 1342
    new-instance v1, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$2;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->D:Ljava/util/Comparator;

    .line 1416
    new-instance v1, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    .line 181
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->h:Landroid/content/Context;

    .line 182
    const-string/jumbo v1, "layout_inflater"

    .line 183
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->g:Landroid/view/LayoutInflater;

    .line 184
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->x:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->x:Ljava/lang/String;

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->y:Z

    .line 186
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 187
    .local v0, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->authOrgs:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->authOrgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->authOrgs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->B:J

    .line 192
    :cond_0
    invoke-static {}, Lacq;->h()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->z:Z

    .line 193
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->A:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->p:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    .line 16621
    new-instance v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$8;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$8;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 16647
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(IILjava/lang/String;Lcma;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;Labp;Ljava/util/ArrayList;I)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Labp;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # I

    .prologue
    .line 57
    const/4 v2, 0x5

    .line 35858
    if-eqz p3, :cond_0

    .line 35862
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 35864
    if-eqz p2, :cond_0

    iget-object v0, p2, Labp;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Labp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35925
    :cond_0
    :goto_0
    return-void

    .line 35868
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    monitor-enter v3

    .line 35869
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 35871
    iget-object v0, p2, Labp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labo;

    .line 35872
    iget-object v1, v0, Labo;->c:Ljava/lang/String;

    .line 35873
    if-eqz v1, :cond_3

    .line 35874
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 35877
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 35881
    iget-boolean v5, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->y:Z

    if-nez v5, :cond_4

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 35886
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 35888
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf;

    .line 35889
    if-eqz v1, :cond_5

    .line 36097
    iget v1, v1, Lsf;->d:I

    sub-int/2addr v1, v2

    .line 35891
    if-gez v1, :cond_7

    .line 35893
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35900
    :cond_5
    :goto_2
    iget-object v1, v0, Labo;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 35901
    iget-object v1, v0, Labo;->c:Ljava/lang/String;

    iput-object v1, v0, Labo;->b:Ljava/lang/String;

    .line 35904
    :cond_6
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->v:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf;

    .line 35906
    iget-object v6, v0, Labo;->b:Ljava/lang/String;

    .line 35908
    if-eqz v1, :cond_8

    .line 35910
    iget-object v0, v0, Labo;->d:Ljava/lang/String;

    iput-object v0, v1, Lsf;->f:Ljava/lang/String;

    .line 37105
    :goto_3
    iput-object p1, v1, Lsf;->h:Ljava/lang/String;

    goto :goto_1

    .line 35925
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 35894
    :cond_7
    if-gtz v1, :cond_2

    goto :goto_2

    .line 35912
    :cond_8
    :try_start_1
    new-instance v1, Lsf;

    iget-object v7, v0, Labo;->d:Ljava/lang/String;

    invoke-direct {v1, v6, v5, v2, v7}, Lsf;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 36137
    iput v2, v1, Lsf;->d:I

    .line 35917
    iget-object v0, v0, Labo;->b:Ljava/lang/String;

    iput-object v0, v1, Lsf;->g:Ljava/lang/String;

    .line 35918
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35919
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 35925
    :cond_9
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/alimei/contact/model/SearchContactResultModel;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Lcom/alibaba/alimei/contact/model/SearchContactResultModel;

    .prologue
    const/4 v8, 0x4

    .line 57
    .line 31788
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;->searchResut:Ljava/util/List;

    if-nez v0, :cond_1

    .line 31789
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 31852
    :goto_0
    return-void

    .line 31793
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    monitor-enter v2

    .line 31794
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 31796
    iget-object v0, p3, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;->searchResut:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;

    .line 31797
    if-eqz v0, :cond_2

    .line 31801
    iget-object v1, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->email:Ljava/lang/String;

    .line 31802
    if-eqz v1, :cond_3

    .line 31803
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 31807
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 31811
    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->y:Z

    if-nez v4, :cond_4

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 31816
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 31818
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf;

    .line 31819
    if-eqz v1, :cond_5

    .line 32097
    iget v1, v1, Lsf;->d:I

    sub-int/2addr v1, v8

    .line 31821
    if-gez v1, :cond_8

    .line 31823
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31830
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 31831
    iget-object v1, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->name:Ljava/lang/String;

    .line 31834
    :cond_6
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->v:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf;

    .line 31836
    iget-object v5, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->name:Ljava/lang/String;

    .line 31838
    if-nez v1, :cond_7

    .line 31839
    new-instance v1, Lsf;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {v1, v5, v4, v6, v7}, Lsf;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 31843
    const/4 v5, 0x4

    .line 32137
    iput v5, v1, Lsf;->d:I

    .line 31844
    iget-object v0, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->name:Ljava/lang/String;

    iput-object v0, v1, Lsf;->g:Ljava/lang/String;

    .line 31845
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31846
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33105
    :cond_7
    iput-object p1, v1, Lsf;->h:Ljava/lang/String;

    goto :goto_1

    .line 31852
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 31824
    :cond_8
    if-gtz v1, :cond_2

    goto :goto_2

    .line 31852
    :cond_9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    const/4 v10, 0x7

    const/4 v2, -0x1

    .line 57
    .line 26057
    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    monitor-enter v4

    .line 26058
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26059
    if-eqz p2, :cond_e

    .line 26060
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    .line 26062
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getMailAddress()Ljava/lang/String;

    move-result-object v1

    .line 26063
    if-eqz v1, :cond_1

    .line 26064
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 26067
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 26071
    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->y:Z

    if-nez v3, :cond_2

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 26076
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 26077
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf;

    .line 26078
    if-eqz v1, :cond_3

    .line 27097
    iget v1, v1, Lsf;->d:I

    sub-int/2addr v1, v10

    .line 26080
    if-gez v1, :cond_4

    .line 26082
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26089
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v3

    .line 26092
    :goto_2
    new-instance v6, Lsf;

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-direct {v6, v1, v3, v7, v8}, Lsf;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 26097
    const/4 v1, 0x7

    .line 27137
    iput v1, v6, Lsf;->d:I

    .line 28105
    iput-object p1, v6, Lsf;->h:Ljava/lang/String;

    .line 26101
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getModifyTime()J

    move-result-wide v8

    .line 28113
    iput-wide v8, v6, Lsf;->i:J

    .line 26103
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26113
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getMailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 26115
    :goto_3
    if-eq v1, v2, :cond_7

    .line 26116
    const/4 v0, 0x0

    .line 28121
    iput v0, v6, Lsf;->j:I

    .line 28129
    iput v1, v6, Lsf;->k:I

    goto :goto_0

    .line 26149
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 26083
    :cond_4
    if-gtz v1, :cond_0

    goto :goto_1

    .line 26089
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 26113
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getMailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 26121
    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 26123
    :goto_4
    if-eq v1, v2, :cond_9

    .line 26124
    const/4 v0, 0x1

    .line 29121
    iput v0, v6, Lsf;->j:I

    .line 29129
    iput v1, v6, Lsf;->k:I

    goto/16 :goto_0

    .line 26121
    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_4

    .line 26129
    :cond_9
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getPinyinInitial()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    .line 26131
    :goto_5
    if-eq v1, v2, :cond_b

    .line 26133
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26134
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->v:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 26129
    :cond_a
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getPinyinInitial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 26138
    :cond_b
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getPinyinAll()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v0, v2

    .line 26140
    :goto_6
    if-eq v0, v2, :cond_d

    .line 26141
    const/4 v1, 0x3

    .line 30121
    iput v1, v6, Lsf;->j:I

    .line 30129
    iput v0, v6, Lsf;->k:I

    goto/16 :goto_0

    .line 26138
    :cond_c
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getPinyinAll()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 26146
    :cond_d
    const/4 v0, 0x4

    .line 31121
    iput v0, v6, Lsf;->j:I

    goto/16 :goto_0

    .line 26149
    :cond_e
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;Ljava/util/List;Ljava/util/ArrayList;I)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # I

    .prologue
    .line 57
    .line 33930
    if-eqz p3, :cond_0

    .line 33934
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 33935
    :cond_0
    :goto_0
    return-void

    .line 33938
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    monitor-enter v3

    .line 33939
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 33941
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 33942
    invoke-static {v0}, Lafh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    .line 33943
    if-eqz v1, :cond_7

    .line 33944
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 33947
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 33951
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->y:Z

    if-nez v1, :cond_3

    invoke-static {v2}, Lacn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 33956
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33957
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 33960
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->v:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf;

    .line 33962
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 33964
    if-eqz v1, :cond_5

    .line 33966
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v0, v1, Lsf;->f:Ljava/lang/String;

    .line 35105
    :goto_3
    iput-object p1, v1, Lsf;->h:Ljava/lang/String;

    goto :goto_1

    .line 33981
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 33968
    :cond_5
    :try_start_1
    new-instance v1, Lsf;

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-direct {v1, v5, v2, p4, v6}, Lsf;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 34137
    iput p4, v1, Lsf;->d:I

    .line 33973
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, v1, Lsf;->g:Ljava/lang/String;

    .line 33974
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33975
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 33981
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33983
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 33984
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->w:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, v1

    goto :goto_2
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11
    .param p2, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lsf;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsf;>;"
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1157
    .line 1158
    move-object v0, p1

    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lsf;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1161
    .local v3, "size":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_7

    .line 1162
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsf;

    .line 1163
    .local v4, "temp":Lsf;
    move v2, v1

    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_6

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsf;

    .line 14179
    if-eqz v4, :cond_5

    .line 14182
    if-nez v6, :cond_0

    move v6, v7

    .line 1163
    :goto_2
    if-eqz v6, :cond_6

    .line 1164
    add-int/lit8 v6, v2, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsf;

    .line 1165
    .local v5, "tempinfo":Lsf;
    invoke-interface {v0, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1163
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 14189
    .end local v5    # "tempinfo":Lsf;
    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move v6, v8

    .line 14190
    goto :goto_2

    .line 14193
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v6, v7

    .line 14194
    goto :goto_2

    .line 14196
    :cond_4
    if-eqz v10, :cond_5

    .line 14197
    invoke-virtual {v10, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v10, :cond_5

    .line 14199
    invoke-virtual {v10, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 14200
    invoke-virtual {v10, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ge v6, v9, :cond_5

    move v6, v7

    goto :goto_2

    :cond_5
    move v6, v8

    goto :goto_2

    .line 1167
    :cond_6
    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    .end local v2    # "j":I
    .end local v4    # "temp":Lsf;
    :cond_7
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    .line 17366
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17370
    new-instance v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 17392
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->x:Ljava/lang/String;

    invoke-static {v1}, Lafv;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryFrequentContacts(Ljava/lang/String;IZLxv;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;Ljava/util/List;Ljava/util/ArrayList;I)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # I

    .prologue
    .line 57
    .line 37990
    if-eqz p3, :cond_0

    .line 37994
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 37996
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 37997
    :cond_0
    :goto_0
    return-void

    .line 38000
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    monitor-enter v2

    .line 38001
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 38002
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 38003
    invoke-static {v0}, Lafh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Ljava/lang/String;

    move-result-object v1

    .line 38004
    if-eqz v1, :cond_3

    .line 38005
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 38008
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 38012
    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->y:Z

    if-nez v4, :cond_4

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 38017
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 38019
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf;

    .line 38020
    if-eqz v1, :cond_5

    .line 38097
    iget v1, v1, Lsf;->d:I

    sub-int/2addr v1, p4

    .line 38022
    if-gez v1, :cond_7

    .line 38024
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38031
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 38032
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 38035
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 38037
    new-instance v5, Lsf;

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-direct {v5, v1, v4, p4, v6}, Lsf;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 38137
    iput p4, v5, Lsf;->d:I

    .line 38042
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v0, v5, Lsf;->g:Ljava/lang/String;

    .line 38043
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38044
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39105
    iput-object p1, v5, Lsf;->h:Ljava/lang/String;

    goto :goto_1

    .line 38049
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 38025
    :cond_7
    if-gtz v1, :cond_2

    goto :goto_2

    .line 38049
    :cond_8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38051
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 38052
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->w:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->v:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    .line 17651
    new-instance v6, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$9;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$9;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 17677
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    iget-wide v4, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->B:J

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(IILjava/lang/String;JLcma;)V

    .line 57
    return-void
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    .line 18491
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->h:Landroid/content/Context;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18495
    new-instance v1, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 18519
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 18520
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 18524
    :goto_0
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    .line 19517
    new-instance v2, Lro$11;

    invoke-direct {v2, v1, v0}, Lro$11;-><init>(Lro;Lcma;)V

    .line 19533
    iget-object v0, v1, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    const/4 v1, 0x0

    const/16 v3, 0x64

    invoke-interface {v0, p1, v1, v3, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->searchConversation(Ljava/lang/String;IILiyv;)V

    .line 57
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    .line 20403
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->x:Ljava/lang/String;

    .line 20404
    invoke-static {v0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20405
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->x:Ljava/lang/String;

    invoke-interface {v0, v1}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20406
    :cond_0
    :goto_0
    return-void

    .line 20409
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 20431
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/alimei/contact/api/ContactApi;->searchContactsFromServer(Ljava/lang/String;IILxv;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    .line 20681
    new-instance v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$10;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$10;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 20707
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->b(IILjava/lang/String;Lcma;)V

    .line 57
    return-void
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x14

    .line 57
    .line 21582
    new-instance v1, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$7;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$7;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 21609
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 21610
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v1, v0

    .line 21613
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->i:Lajo;

    if-nez v0, :cond_1

    .line 21614
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->w:Ljava/lang/String;

    .line 22036
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 22037
    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 22038
    new-instance v3, Lajq$1;

    invoke-direct {v3, v2, v5, v1}, Lajq$1;-><init>(Ljava/lang/String;ILcma;)V

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 21614
    :goto_0
    return-void

    .line 21616
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->i:Lajo;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->w:Ljava/lang/String;

    .line 22061
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 22062
    sget-object v4, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 22065
    new-instance v4, Lajo$1;

    invoke-direct {v4, v2, v3, v5, v1}, Lajo$1;-><init>(Lajo;Ljava/lang/String;ILcma;)V

    .line 22085
    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x14

    .line 57
    .line 23441
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->h:Landroid/content/Context;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23445
    new-instance v1, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$5;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 23471
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 23472
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v1, v0

    .line 23476
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->i:Lajo;

    if-nez v0, :cond_2

    .line 23477
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->w:Ljava/lang/String;

    .line 24089
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 24090
    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 24091
    new-instance v3, Lajq$3;

    invoke-direct {v3, v2, v5, v1}, Lajq$3;-><init>(Ljava/lang/String;ILcma;)V

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 23477
    :cond_1
    :goto_0
    return-void

    .line 23479
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->i:Lajo;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->w:Ljava/lang/String;

    .line 25099
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 25100
    sget-object v4, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 25103
    new-instance v4, Lajo$2;

    invoke-direct {v4, v2, v3, v5, v1}, Lajo$2;-><init>(Lajo;Ljava/lang/String;ILcma;)V

    .line 25123
    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x200

    const/4 v2, 0x0

    .line 57
    .line 39538
    const/16 v0, 0xda

    iget v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->A:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3f

    iget v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->A:I

    if-ne v0, v1, :cond_2

    .line 39540
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 39541
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 39542
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39543
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39560
    :cond_1
    :goto_0
    return-void

    .line 39544
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->z:Z

    if-eqz v0, :cond_4

    .line 39546
    iget v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->A:I

    and-int/lit8 v0, v0, 0x3f

    if-eqz v0, :cond_3

    .line 39547
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 39548
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39549
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 39550
    :cond_3
    iget v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->A:I

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_1

    .line 39552
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 39555
    :cond_4
    iget v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->A:I

    and-int/lit16 v0, v0, 0xda

    if-eqz v0, :cond_5

    .line 39557
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 39558
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39559
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 39560
    :cond_5
    iget v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->A:I

    and-int/lit16 v0, v0, 0xda

    if-nez v0, :cond_1

    .line 39562
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->z:Z

    return v0
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->y:Z

    return v0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->m:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$a;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->C:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->D:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->A:I

    return v0
.end method


# virtual methods
.method public final a(I)Lsf;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsf;

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 196
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->k:Z

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 202
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v1

    goto :goto_0

    .line 204
    .end local v0    # "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->l:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$b;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$b;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$b;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->l:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$b;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->l:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$b;

    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(I)Lsf;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 226
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "inflate"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 232
    if-nez p2, :cond_0

    .line 233
    new-instance v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;

    invoke-direct {v0, v7}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;-><init>(B)V

    .line 234
    .local v0, "viewHolder":Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->g:Landroid/view/LayoutInflater;

    sget v2, Laxo$g;->alm_cspace_chips_recipient_dropdown_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 235
    const v1, 0x1020016

    .line 236
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2281
    iput-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->a:Landroid/widget/TextView;

    .line 237
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3281
    iput-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->b:Landroid/widget/TextView;

    .line 238
    sget v1, Laxo$f;->alm_contact_photo:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 4281
    iput-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->c:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 5281
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->c:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 239
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setTextSize(F)V

    .line 240
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf;

    .line 6252
    iget-object v4, v1, Lsf;->g:Ljava/lang/String;

    .line 7141
    iget-object v3, v1, Lsf;->a:Ljava/lang/String;

    .line 7157
    iget-object v2, v1, Lsf;->b:Ljava/lang/String;

    .line 6255
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 7281
    :goto_1
    iget-object v5, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->b:Landroid/widget/TextView;

    .line 6256
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6259
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8281
    iget-object v3, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->a:Landroid/widget/TextView;

    .line 6260
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9281
    iget-object v3, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->c:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 6261
    invoke-virtual {v3, v2, v1, v7}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    :goto_2
    return-object p2

    .line 242
    .end local v0    # "viewHolder":Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;

    .restart local v0    # "viewHolder":Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;
    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 6255
    goto :goto_1

    .line 6264
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10281
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->a:Landroid/widget/TextView;

    .line 6265
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13281
    :goto_3
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->c:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 6273
    invoke-virtual {v1, v2, v4, v7}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 6267
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 11281
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->a:Landroid/widget/TextView;

    .line 6268
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v7

    const/4 v3, 0x1

    const-string/jumbo v6, "("

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string/jumbo v6, ")"

    aput-object v6, v5, v3

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 12281
    :cond_4
    iget-object v3, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$d;->a:Landroid/widget/TextView;

    .line 6270
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
