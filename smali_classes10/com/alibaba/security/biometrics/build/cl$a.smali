.class public Lcom/alibaba/security/biometrics/build/cl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/security/biometrics/build/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/content/DialogInterface$OnClickListener;

.field f:Ljava/lang/String;

.field g:Landroid/content/DialogInterface$OnClickListener;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/build/cl$a;->h:Z

    iput-object p1, p0, Lcom/alibaba/security/biometrics/build/cl$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/security/biometrics/build/cl$a;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/build/cl$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/security/biometrics/build/cl$a;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final a()Lcom/alibaba/security/biometrics/build/cl;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Lcom/alibaba/security/biometrics/build/cl;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/cl$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/cl$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/cl$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/security/biometrics/build/cl$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/security/biometrics/build/cl$a;->e:Landroid/content/DialogInterface$OnClickListener;

    iget-object v6, p0, Lcom/alibaba/security/biometrics/build/cl$a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/security/biometrics/build/cl$a;->g:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v8, p0, Lcom/alibaba/security/biometrics/build/cl$a;->h:Z

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/security/biometrics/build/cl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/cl;->show()V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/security/biometrics/build/cl$a;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/build/cl$a;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/security/biometrics/build/cl$a;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method
