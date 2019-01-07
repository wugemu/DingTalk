.class final Lcip$1;
.super Lcim;
.source "GoogleLocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcip;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcip;


# direct methods
.method constructor <init>(Lcip;)V
    .locals 0
    .param p1, "this$0"    # Lcip;

    .prologue
    .line 42
    iput-object p1, p0, Lcip$1;->e:Lcip;

    invoke-direct {p0}, Lcim;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/String;)V
    .locals 9
    .param p1, "info"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    const-string/jumbo v0, "lightapp"

    invoke-static {}, Lcip;->c()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "**************************\n"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo v3, " location time too long!!\n"

    aput-object v3, v2, v6

    const-string/jumbo v3, "**************************\n"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "lightapp"

    invoke-static {}, Lcip;->c()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "**************************\n"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo v3, " location time too long!!\n"

    aput-object v3, v2, v6

    const-string/jumbo v3, "**************************\n"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method
