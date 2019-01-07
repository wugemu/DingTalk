.class public final Ldj;
.super Ljava/lang/Object;
.source "RemoteInputCompatApi20.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x14
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([Ldk$a;)[Landroid/app/RemoteInput;
    .locals 5
    .param p0, "srcArray"    # [Ldk$a;

    .prologue
    .line 51
    if-nez p0, :cond_1

    .line 52
    const/4 v1, 0x0

    .line 64
    :cond_0
    return-object v1

    .line 54
    :cond_1
    array-length v3, p0

    new-array v1, v3, [Landroid/app/RemoteInput;

    .line 55
    .local v1, "result":[Landroid/app/RemoteInput;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 56
    aget-object v2, p0, v0

    .line 57
    .local v2, "src":Ldk$a;
    new-instance v3, Landroid/app/RemoteInput$Builder;

    invoke-virtual {v2}, Ldk$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Ldk$a;->b()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 59
    invoke-virtual {v2}, Ldk$a;->c()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 60
    invoke-virtual {v2}, Ldk$a;->e()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 61
    invoke-virtual {v2}, Ldk$a;->f()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v3

    aput-object v3, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([Landroid/app/RemoteInput;Ldk$a$a;)[Ldk$a;
    .locals 10
    .param p0, "srcArray"    # [Landroid/app/RemoteInput;
    .param p1, "factory"    # Ldk$a$a;

    .prologue
    const/4 v6, 0x0

    .line 38
    if-nez p0, :cond_0

    .line 47
    :goto_0
    return-object v6

    .line 41
    :cond_0
    array-length v0, p0

    invoke-interface {p1, v0}, Ldk$a$a;->a(I)[Ldk$a;

    move-result-object v8

    .line 42
    .local v8, "result":[Ldk$a;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, p0

    if-ge v7, v0, :cond_1

    .line 43
    aget-object v9, p0, v7

    .line 44
    .local v9, "src":Landroid/app/RemoteInput;
    invoke-virtual {v9}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v9}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 45
    invoke-virtual {v9}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    invoke-virtual {v9}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    .line 44
    invoke-interface/range {v0 .. v6}, Ldk$a$a;->a(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)Ldk$a;

    move-result-object v0

    aput-object v0, v8, v7

    .line 42
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v9    # "src":Landroid/app/RemoteInput;
    :cond_1
    move-object v6, v8

    .line 47
    goto :goto_0
.end method
