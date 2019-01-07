.class public Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/UserProfileChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aNe:Z

.field private aNf:Z

.field private aNg:Landroid/net/Uri;

.field private dC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/auth/UserProfileChangeRequest;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Lcom/google/firebase/auth/UserProfileChangeRequest;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->dC:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->aNg:Landroid/net/Uri;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->aNe:Z

    iget-boolean v5, p0, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->aNf:Z

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/auth/UserProfileChangeRequest;-><init>(ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->aNg:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->aNe:Z

    :goto_0
    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->dC:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPhotoUri(Landroid/net/Uri;)Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->aNf:Z

    :goto_0
    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->aNg:Landroid/net/Uri;

    goto :goto_0
.end method
