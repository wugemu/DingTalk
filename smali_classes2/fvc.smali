.class public final Lfvc;
.super Lcr;
.source "ProfileSubPageAdapter.java"


# static fields
.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, ""

    sput-object v0, Lfvc;->c:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    sput-object v0, Lfvc;->d:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    sput-object v0, Lfvc;->e:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    sput-object v0, Lfvc;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "fm"    # Lcn;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;>;"
    .local p4, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcr;-><init>(Lcn;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfvc;->a:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfvc;->b:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lfvc;->g:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lfvc;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lfvc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    if-eqz p4, :cond_0

    .line 40
    iget-object v0, p0, Lfvc;->b:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_0
    iget-object v0, p0, Lfvc;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lfvc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    if-eqz p3, :cond_1

    .line 47
    iget-object v0, p0, Lfvc;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_1
    iget-object v0, p0, Lfvc;->g:Landroid/content/Context;

    sget v1, Lezg$l;->dt_user_profile_colleague_information:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfvc;->c:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lfvc;->g:Landroid/content/Context;

    sget v1, Lezg$l;->dt_user_profile_card_information:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfvc;->d:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lfvc;->g:Landroid/content/Context;

    sget v1, Lezg$l;->dt_external_contact_setting_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfvc;->e:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lfvc;->g:Landroid/content/Context;

    sget v1, Lezg$l;->dt_user_profile_connection_feeds:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfvc;->f:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lfvc;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lfvc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lfvc;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lfvc;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lfvc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 117
    const/4 v0, -0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lfvc;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lfvc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lfvc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
