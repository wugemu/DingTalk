.class final Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$1;
.super Ljava/lang/Object;
.source "PoiSearchActivity.java"

# interfaces
.implements Lgd$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$1;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$1;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->finish()V

    .line 114
    const/4 v0, 0x1

    return v0
.end method
