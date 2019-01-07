.class final Lhfg$1;
.super Ljava/lang/Object;
.source "AppInfoSourceImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhfg;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhfg;


# direct methods
.method constructor <init>(Lhfg;)V
    .locals 0
    .param p1, "this$0"    # Lhfg;

    .prologue
    .line 148
    iput-object p1, p0, Lhfg$1;->a:Lhfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 148
    check-cast p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    check-cast p2, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    .line 1151
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1152
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    iget-object v1, p2, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lhfh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 1155
    :cond_0
    const/4 v0, 0x0

    .line 148
    goto :goto_0
.end method
