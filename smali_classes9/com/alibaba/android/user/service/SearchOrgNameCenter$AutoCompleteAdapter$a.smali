.class public final Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter$a;
.super Landroid/widget/Filter;
.source "SearchOrgNameCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter$a;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 272
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 273
    .local v0, "tag":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter$a;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a(Ljava/lang/String;)V

    .line 274
    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 275
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter$a;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 277
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter$a;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    invoke-static {v1}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a(Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;)Lcom/alibaba/android/user/service/SearchOrgNameCenter$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter$a;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    invoke-static {v1}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a(Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;)Lcom/alibaba/android/user/service/SearchOrgNameCenter$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$a;->a(Ljava/lang/String;)V

    .line 282
    :cond_1
    return-void

    .line 272
    .end local v0    # "tag":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
