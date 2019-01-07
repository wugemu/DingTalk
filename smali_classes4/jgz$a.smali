.class public final Ljgz$a;
.super Ljava/lang/Object;
.source "WeiboAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field public f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .param p4, "scope"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljgz$a;->a:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljgz$a;->b:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljgz$a;->c:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljgz$a;->d:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljgz$a;->e:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ljgz$a;->f:Landroid/os/Bundle;

    .line 71
    iput-object p2, p0, Ljgz$a;->a:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Ljgz$a;->b:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Ljgz$a;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgz$a;->d:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Ljgz$a;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Ljhk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgz$a;->e:Ljava/lang/String;

    .line 1098
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ljgz$a;->f:Landroid/os/Bundle;

    .line 1099
    iget-object v0, p0, Ljgz$a;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "appKey"

    iget-object v2, p0, Ljgz$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Ljgz$a;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "redirectUri"

    iget-object v2, p0, Ljgz$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Ljgz$a;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "scope"

    iget-object v2, p0, Ljgz$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Ljgz$a;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "packagename"

    iget-object v2, p0, Ljgz$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Ljgz$a;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "key_hash"

    iget-object v2, p0, Ljgz$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
