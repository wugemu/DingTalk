.class final Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$b;
.super Ljava/lang/Object;
.source "SearchMobileContactsActivity.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field final synthetic c:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$b;->c:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$b;->a:Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$b;-><init>(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 300
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$b;->b:Z

    if-nez v1, :cond_0

    .line 301
    const-string/jumbo v1, "local_contact"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 302
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$b;->c:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$b;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->a(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;Ljava/lang/String;Ljava/util/List;)V

    .line 304
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 310
    return-void
.end method
