.class public Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;
.super Leuo;
.source "TeleConferenceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public e:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Leuo;-><init>(Landroid/app/Activity;)V

    .line 36
    sget-object v0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;->CONF_PSTN:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->e:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)Lezd;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    goto :goto_0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 62
    if-nez p2, :cond_4

    .line 63
    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1093
    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->e:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    sget-object v4, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;->CONF_PSTN:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    if-eq v2, v4, :cond_2

    .line 1095
    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->e:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    sget-object v4, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;->CONF_VOIP:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    if-ne v2, v4, :cond_2

    .line 1096
    sget v2, Leuj$j;->layout_conf_avatar_for_new:I

    .line 63
    :goto_0
    invoke-virtual {v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2083
    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->e:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    sget-object v3, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;->CONF_PSTN:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    if-ne v2, v3, :cond_3

    .line 2084
    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, "holder":Leza;
    :cond_0
    :goto_1
    invoke-virtual {v1, p2}, Leza;->a(Landroid/view/View;)V

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 74
    .local v0, "avatar":Lezd;
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1, v0, p1}, Leza;->a(Lezd;I)V

    .line 78
    :cond_1
    return-object p2

    .line 1098
    .end local v0    # "avatar":Lezd;
    .end local v1    # "holder":Leza;
    :cond_2
    sget v2, Leuj$j;->layout_conf_avatar:I

    goto :goto_0

    .line 2085
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->e:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    sget-object v3, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;->CONF_VOIP:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    if-ne v2, v3, :cond_0

    .line 2086
    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leza;

    .restart local v1    # "holder":Leza;
    goto :goto_2
.end method
